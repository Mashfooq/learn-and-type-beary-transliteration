

(function () {
  "option strict";

  let consonants;
  let vowels;
  let kaagunita;
  let numbers;
  let viraama;
  let anusvaara;
  let visarga;
  let avagraha;
  let danda;
  let doubleDanda;
  let chandraBindu;

  let inputPassage;
  let outputPassage;

  let inputTextPanel;
  let outputTextPanel;

  let sampleGenericPassage;

  let language;
  let optionLang;

  let bnTrans;
  let bnMalayalam;
  let bnCopyInpText;
  let bnCopyOutText;

  const regex1 = /aa/g;
  const regex2 = /ee/g;
  const regex3 = /oo/g;
  const regex4 = /kh/g;
  const regex5 = /gh/g;
  const regex6 = /ch/g;
  const regex7 = /jh/g;
  const regex8 = /ph/g;
  const regex9 = /bh/g;
  const regex10 = /sh/g;
  const regex11 = /Ch/g;
  const regex12 = /ai/g;
  const regex13 = /au/g;
  const regex14 = /ou/g;
  const regex15 = /Th/g;
  const regex16 = /Dh/g;
  const regex17 = /th/g;
  const regex18 = /dh/g;
  const regex19 = /Sh/g;
  const regex20 = /~g/g;
  const regex21 = /~j/g;
  const regex22 = /Ru/g;
  const regex23 = /RU/g;
  const regex24 = /eu/g;
  const regex25 = /~n/g;
  const regex26 = /~m/g;
  const regex27 = /[bcdfghjklmnpqrstvwxyz~&|,.?\'-]{0,}[aeiou^]{0,}/gi;
  const regex28 = /zh/g;
  const regex29 = /~M/g;
  const regex30 = /rx/g;
  const regex31 = /~n/g; 

  window.onload = init;

  
  function init() {

    setupMalayalamMaps();

    sampleGenericPassage = "byari yeldi paDikuva .";

    //sampleGenericPassage is placeholder;

    document.getElementById("inputEnglish").value = sampleGenericPassage;

    optionLang = document.getElementById("inpLang");
    optionLang.addEventListener("change", handleOption, false);

    bnTrans = document.getElementById("transliterate");
    bnTrans.addEventListener("click", transliteratePassage, false);

    bnMalayalam = document.getElementById("sampleMalayalam");
    bnMalayalam.addEventListener("click", showMalayalamText, false);

    bnCopyInpText = document.getElementById("copyInpText");
    bnCopyInpText.addEventListener("click", copyInputText, false);

    bnCopyOutText = document.getElementById("copyOutText");
    bnCopyOutText.addEventListener("click", copyOutputText, false);

    inputTextPanel = document.getElementById("inputEnglish");
    inputPassage = inputTextPanel.value;

    optionLang.value = "beary";
    outputTextPanel = document.getElementById("outputText");
    handleOption();
  }

  function handleOption() {
    if (optionLang.value === "beary") {
      language = "Beary";

      vowels = malayalamVowels;
      consonants = malayalamConsonants;
      kaagunita = malayalamKaagunita;
      numbers = malayalamNumbers;
      anusvaara = malayalamAnusvaara;
      visarga = malayalamVisarga;
      viraama = malayalamViraama;
      avagraha = malayalamAvagraha;
      chandraBindu = malayalamChandraBindu;

      transliteratePassage();
    }

   // document.getElementById("outputTitle").innerHTML = language + " Output";
  }

  function transliteratePassage() {
    inputPassage = document.getElementById("inputEnglish").value;

    outputPassage = "";

    let lines = inputPassage.split("\n");

    for (let i = 0; i < lines.length; ++i) {
      let line = lines[i];
      let strgParts = line.split(" ");
      //console.log("----", strgParts);

      for (let j = 0; j < strgParts.length; ++j) {
        outputPassage += SplitIntoParts(strgParts[j]);
        outputPassage += " ";
      }
      outputPassage += "\n";
    }

    outputTextPanel.value = outputPassage;
  }

  function SplitIntoParts(strg) {
    // First find the numbers in the string
    let splitNos = strg.split(/(\d+)/);

    let transString = "";

    for (let j = 0; j < splitNos.length; ++j) {
      let isnum = /^\d+$/.test(splitNos[j]); // Check for number

      if (isnum) {
        // Handling of numbers
        let num = splitNos[j];
        for (let i = 0; i < num.length; ++i) {
          let no = num[i].toString();
          if (numbers.has(no)) {
            transString += numbers.get(no);
          } else {
            transString += no;
          }
        }
      } else {
        // Handling of non-numbers
        let splitParts = splitNos[j].match(regex27);
        //console.log(splitParts);

        for (let i = 0; i < splitParts.length - 1; ++i) {
          let isLastPart = i === splitParts.length - 2;
          let isFirstPart = i === 0;
          transString += transliterateEachPart(
            splitParts[i],
            isFirstPart,
            isLastPart
          );
        }
      }
    }
    return transString;
  }

  // Function to handle updated part of Length 1, like "H", "a", "|"
  function handlePartOfLength1(updatedPart, isFirstPart, isLastPart, result) {
    //console.log("Coming here Part 1", updatedPart, isFirstPart);
    if (updatedPart[0] == "R" && isFirstPart) {
      result += vowels.get("Ru");
    } else if (vowels.has(updatedPart[0])) {
      result += vowels.get(updatedPart[0]);
    } else if (consonants.has(updatedPart[0])) {
     /* if (
        (language === "Bengali" ||
          language === "Assamese" ||
          language === "Odia" ||
          language === "Gujarati" ||
          language === "Gurmukhi") &&
        isLastPart
      ) {
        // For Assamese, Bengali, Odia, Gujarati, Gurmukhi languages,
        //  the last consonant has an 'a' ending
        result += consonants.get(updatedPart[0]);
      }else
      {*/
        result += consonants.get(updatedPart[0]) + viraama;
      
    } else if (updatedPart === "H") {
      result += visarga;
    } else if (updatedPart === "M") {
      result += anusvaara;
    } else if (updatedPart === "!") {
      result += danda;
    }/* else if (updatedPart === "[") {
      if (language === "Gurmukhi") {
        result += gurmukhiTippi;
      }
    } else if (updatedPart === "]") {
      if (language === "Gurmukhi") {
        result += gurmukhiAddak;
      }
    }*/ else if (updatedPart === "=") {
      result += chandraBindu;
    } else {
      result += updatedPart;
    }
    return result;
  } 

  // Function to handle updated part of Length 2, like "ta", "da", "ru", "Ba"
  function handlePartOfLength2(updatedPart, isFirstPart, result) {
    //console.log("Coming here Part 2", updatedPart, isFirstPart);

    if (language === "Beary") {
      if (updatedPart[1] === "^") {
        // Handle the Chillus
        if (updatedPart[0] === "N") {
          result += malayalamChilluNN;
        } else if (updatedPart[0] === "n") {
          result += malayalamChilluN;
        } else if (updatedPart[0] === "r") {
          result += malayalamChilluRR;
        } else if (updatedPart[0] === "l") {
          result += malayalamChilluL;
        } else if (updatedPart[0] === "L") {
          result += malayalamChilluLL;
        } else {
          result += malayalamChilluK;
        }
        return result;
      } else if (consonants.has(updatedPart[0]) && updatedPart[1] === "R") {
        result +=
          consonants.get(updatedPart[0]) + kaagunita.get(updatedPart[1]);
        return result;
      }
    }

   

    if (updatedPart[0] === "[" || updatedPart[0] === "]") {
      // For Gurmukhi language and Tamil language
     /* if (updatedPart[0] === "[") {
        if (language === "Gurmukhi") {
          result += gurmukhiTippi;
        }
        if (language === "Tamil") {
          result += consonants.get("[");
          if (consonants.has(updatedPart[1])) {
            result += viraama + consonants.get(updatedPart[1]);
          } else if (kaagunita.has(updatedPart[1])) {
            result += kaagunita.get(updatedPart[1]);
          }
          return result;
        }
      } else if (updatedPart[0] === "]") {
        if (language === "Gurmukhi") {
          result += gurmukhiAddak;
        }
      }*/
      if (updatedPart[1] !== "a") {
        result += kaagunita.get(updatedPart[1]);
      }
    } else if (consonants.has(updatedPart[0])) {
      if (updatedPart[1] === "a") {
        result += consonants.get(updatedPart[0]);
      } else if (consonants.has(updatedPart[1])) {
        result +=
          consonants.get(updatedPart[0]) +
          viraama +
          consonants.get(updatedPart[1]) +
          viraama;
      } else {
        result +=
          consonants.get(updatedPart[0]) + kaagunita.get(updatedPart[1]);
      }
    } else if (updatedPart[0] === "|" && updatedPart[1] === "|") {
      result += doubleDanda;
    } else if (vowels.has(updatedPart[0])) {
      console.log("Should not come here Part 2");
    } else if (updatedPart[0] === "=") {
      result += chandraBindu;
      if (vowels.has(updatedPart[1])) {
        result += vowels.get(updatedPart[1]);
      } else if (consonants.has(updatedPart[1])) {
        result += consonants.get(updatedPart[1]) + viraama;
      }
    } else {
      console.log("Should not come here also Part 2");
    }
    return result;
  }

  // Function to handle updated part of Length 3, like "tri", "gge", "gra"
  function handlePartOfLength3(updatedPart, isFirstPart, result) {
    console.log("Coming here Part 3", updatedPart, isFirstPart);

   /* if (language === "Gurmukhi") {
      // Identify two consonants which come in pairs and replace
      // with Addak and one consonant

      // Match two repeated consonants
      let regex = /([bcdfghjklmnpqrstvwxyz])\1+/i;
      let updatedPart1 = updatedPart.match(regex);
      if (updatedPart1 !== null && updatedPart1.length === 2) {
        result += gurmukhiAddak + consonants.get(updatedPart1[0][0]);
        if (kaagunita.has(updatedPart[2])) {
          result += kaagunita.get(updatedPart[2]);
        }
        return result;
      }
    } */

    // First handle the special cases of the first letter of this string
    if (
      updatedPart[0] === "M" ||
      updatedPart[0] === "&" ||
      updatedPart[0] === "H" ||
      updatedPart[0] === "[" ||
      updatedPart[0] === "]" ||
      updatedPart[0] === "="
    ) {
      if (updatedPart[0] === "M") {
        result += anusvaara;
      } else if (updatedPart[0] === "&") {
        result += avagraha;
      } else if (updatedPart[0] === "H") {
        result += visarga;
      }/* else if (updatedPart[0] === "[") {
        // ~n
        if (language === "Gurmukhi") {
          result += gurmukhiTippi;
        }
        if (language === "Tamil") {
          // Part starts with ~n
          result += consonants.get("[");
          if (consonants.has(updatedPart[1])) {
            result += viraama + consonants.get(updatedPart[1]);
          } else if (kaagunita.has(updatedPart[1])) {
            result += kaagunita.get(updatedPart[1]);
          }
          if (consonants.has(updatedPart[2])) {
            result += viraama + consonants.get(updatedPart[2]);
          } else if (kaagunita.has(updatedPart[2])) {
            result += kaagunita.get(updatedPart[2]);
          }
          return result;
        }
      }else if (updatedPart[0] === "]") {
        // ~m
        if (language === "Gurmukhi") {
          result += gurmukhiAddak;
        }
      }*/  else if (updatedPart[0] === "=") {
        result += chandraBindu;
      }
      if (consonants.has(updatedPart[1])) {
        if (updatedPart[2] === "a") {
          result += consonants.get(updatedPart[1]);
        } else {
          result +=
            consonants.get(updatedPart[1]) + kaagunita.get(updatedPart[2]);
        }
      } else {
        console.log("Vowel in updatedPart[1] - Case 3 - to handle");
      }
    } else if (updatedPart[0] === "z" && isFirstPart) {
      result +=
        vowels.get("Ru") +
        consonants.get(updatedPart[1]) +
        kaagunita.get(updatedPart[2]);
    } else if (
      consonants.has(updatedPart[0]) &&
      consonants.has(updatedPart[1])
    ) {
      if (updatedPart[2] === "a") {
        result +=
          consonants.get(updatedPart[0]) +
          viraama +
          consonants.get(updatedPart[1]);
      } else if (consonants.has(updatedPart[2])) {
        result +=
          consonants.get(updatedPart[0]) +
          viraama +
          consonants.get(updatedPart[1]) +
          viraama +
          consonants.get(updatedPart[2]) +
          viraama;
      } else {
        result +=
          consonants.get(updatedPart[0]) +
          viraama +
          consonants.get(updatedPart[1]) +
          kaagunita.get(updatedPart[2]);
      }
    } else if (consonants.has(updatedPart[0]) && vowels.has(updatedPart[1])) {
      if (updatedPart[1] === "a") {
        result += consonants.get(updatedPart[0]) + vowels.get(updatedPart[2]);
      } else {
        result +=
          consonants.get(updatedPart[0]) +
          kaagunita.get(updatedPart[1]) +
          vowels.get(updatedPart[2]);
      }
    }
    return result;
  }

  function handlePartOfLengthGreaterThan3(updatedPart, result) {
    //console.log("Coming here Part 4", updatedPart);
    if (
      updatedPart[0] === "M" ||
      updatedPart[0] === "&" ||
      updatedPart[0] === "H" ||
      updatedPart[0] === "[" ||
      updatedPart[0] === "]"
    ) {
      if (updatedPart[0] === "M") {
        result += anusvaara;
      } else if (updatedPart[0] === "&") {
        result += avagraha;
      } else if (updatedPart[0] === "H") {
        result += visarga;
      } /* else if (updatedPart[0] === "[") {
        // ~n
        if (language === "Gurmukhi") {
          result += gurmukhiTippi;
        }
      } else if (updatedPart[0] === "]") {
        // ~m
        if (language === "Gurmukhi") {
          result += gurmukhiAddak;
        }
      }*/ 
      if (consonants.has(updatedPart[1]) && consonants.has(updatedPart[2])) {
        if (updatedPart[3] === "a") {
          result +=
            consonants.get(updatedPart[1]) +
            viraama +
            consonants.get(updatedPart[2]);
        } else {
          result +=
            consonants.get(updatedPart[1]) +
            viraama +
            consonants.get(updatedPart[2]) +
            kaagunita.get(updatedPart[3]);
        }
      }
    } else {
      for (let i = 0; i < updatedPart.length - 2; ++i) {
        result += consonants.get(updatedPart[i]) + viraama;
      }
      if (updatedPart[updatedPart.length - 1] === "a") {
        result += consonants.get(updatedPart[updatedPart.length - 2]);
      } else {
        result +=
          consonants.get(updatedPart[updatedPart.length - 2]) +
          kaagunita.get(updatedPart[updatedPart.length - 1]);
      }
    }
    return result;
  }

  function transliterateEachPart(part, isFirstPart, isLastPart) {
    let result = "";

    let updatedPart = part;
    updatedPart = updatedPart.replace(regex1, "A");
    updatedPart = updatedPart.replace(regex2, "I");
    updatedPart = updatedPart.replace(regex3, "U");
    updatedPart = updatedPart.replace(regex4, "K");
    updatedPart = updatedPart.replace(regex5, "G");
    updatedPart = updatedPart.replace(regex6, "c");
    updatedPart = updatedPart.replace(regex7, "J");
    updatedPart = updatedPart.replace(regex8, "P");
    updatedPart = updatedPart.replace(regex9, "B");
    updatedPart = updatedPart.replace(regex10, "S");
    updatedPart = updatedPart.replace(regex11, "C");
    updatedPart = updatedPart.replace(regex12, "!");
    updatedPart = updatedPart.replace(regex13, "@");
    updatedPart = updatedPart.replace(regex14, "@");
    updatedPart = updatedPart.replace(regex15, "#");
    updatedPart = updatedPart.replace(regex16, "$");
    updatedPart = updatedPart.replace(regex17, "%");
    updatedPart = updatedPart.replace(regex18, "^");
    updatedPart = updatedPart.replace(regex19, "*");
    updatedPart = updatedPart.replace(regex20, "<");
    updatedPart = updatedPart.replace(regex21, ">");

    updatedPart = updatedPart.replace(regex25, "[");
    updatedPart = updatedPart.replace(regex26, "]");
    updatedPart = updatedPart.replace(regex28, "z");
    updatedPart = updatedPart.replace(regex29, "=");
    updatedPart = updatedPart.replace(regex30, "x");

  if (updatedPart.length === 1) {
      result += handlePartOfLength1(
        updatedPart,
        isFirstPart,
        isLastPart,
        result
      );
    } else if (updatedPart.length === 2) {
      result += handlePartOfLength2(updatedPart, isFirstPart, result);
    } else if (updatedPart.length === 3) {
      result += handlePartOfLength3(updatedPart, isFirstPart, result);
    } else {
      // updatedPart.length > 3
      result += handlePartOfLengthGreaterThan3(updatedPart, result);
    }
    return result;
  }

  function copyInputText() {
    // Copy input text to clipboard
    inputTextPanel.select();
    inputTextPanel.setSelectionRange(0, 99999);
    document.execCommand("copy");
    alert("Input text copied to clipboard");
  }

  function copyOutputText() {
    // Copy output text to clipboard
    outputTextPanel.select();
    outputTextPanel.setSelectionRange(0, 99999);
    document.execCommand("copy");
    alert("Output text copied to clipboard");
  }

 
  function showMalayalamText() {
    let passage =
      " akhilaaNDa maNDalamaNiyicchorukki \n atinuLLilaananda deepaM koLutti \n paramaaNu poruLeeluM sphuraNamaay minnuM \n parama prakashamE sharaNaM nee nityaM \n \n suragOLa lakSha~g~gaLaNiyiTTu nir^thi \n aavikala souhruda bandhaM pular^thi \n atinokkeyadhara sootramiNakki \n kuTikoLLuM satyamE sharNaM neeyennuM \n \n duritangaL^ koothadumulakathil ninte \n paripoor^NNa tejassu viLayaaTikkaNmon^ \n oru jaati oru daivamEvam \n parishuddha vEdantaM saphalamaay teeraan^ ";

    passage =
      " va~jchibhoomipatE ciraM \n   sa~jjitaabhaM jayikkENaM \n dEvadEvan^ bhavaaneNuM \n   dEhasaukhyaM vaLar^ttENaM \n \n va~jchibhoomipatE ciraM \n tvaccaritamennuM bhoomau \n     viSrutamaayi viLa~g~ggENaM \n \n va~jchibhoomipatE ciraM \n mar^tyamanamEtuM bhavaal^ \n pattanamaayi bhavikkENaM \n \n va~jchibhoomipatE ciraM \n taavakamaaM kulaM mEnmEl^ \n     shreevaLar^nnullasikkENaM \n \n va~jchibhoomipatE ciraM \n maalakaRRi ciraM \n prajaapaalanaM ceytaruLENaM \n \n va~jchibhoomipatE ciraM \n   sa~jjitaabhaM jayikkENaM";

    optionLang.value = "beary";
    language = "Beary";
    handleOption();
    inputTextPanel.value = passage;
    transliteratePassage();
  }

})();
