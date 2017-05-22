fashion_show = {
  Chanel:{
    Jane:{
      season:"fall",
      color:"blue"
      },
    Jerry:{
      season:"summer",
      color:"blue",
      dislike:"tulle"
    }
  },

Dior:{
    Ana:{
      season:"fall"
      },
    Sarah:{
      season:"spring",
      color:"mauve"
    },
    Chen:{
      color:"black",
      dislike:["heels","feathers"]
    }
  },

  Versace:{
    Jose:{
      dislike:"shorts"
      },
    Jon:{
      season:"winter",
      color:"white"
      },
    Jaz:{
      color:"brown"
    }
  },

  Armani:{
    Ali:{
      season:"summer"
      },
    Eric:{
      },
    Vic:{
      season:"fall",
      color:"pink",
      dislike:"loafers"
    }
  },

  Givenchy:{
      Don:{
        season:"winter",
        color:"gray",
        dislike:"yellow"
        },
      Cody:{
        color:"green",
        dislike:"flats"
        },
      Jason:{
      },
      Harry:{
        season:"spring"
      }
    }

}

p fashion_show
p fashion_show[:Givenchy][:Don]
p fashion_show[:Chanel][:Jane][:color]
p fashion_show [:Dior][:Chen][:dislike][1]
