#!/usr/bin/env bash
#
#
#		Crypto Ticker
#
#
#			Install			sudo apt install curl jq
#
#			chmod				chmod +x crypto_ticker.sh
#
#			run				./crypto_ticker.sh
#
#			API				kucoin.com
#
#


# Function
	cryptoticker() {
      clear


# Assets
      ticker=( "BTC-USDT"
               "XMR-USDT"
               "ETH-USDT"
               "XTZ-USDT"
               "KAS-USDT"
               "BNB-USDT"
               "VET-USDT"
               "DFI-USDT"
               "INJ-USDT"
               "SOL-USDT"
      )


# Title
      echo -e -n "\n\n\tCrypto Ticker\n\n"


# API Request
      for a in "${ticker[@]}"
      do
         price=$(curl -s -H -X GET 'https://api.kucoin.com/api/v1/market/orderbook/level1?symbol='$a | jq -r '.data.price')
         echo -e -n "\n\t\t$a"
         echo -e -n "\t$price"
      done


# Navi
      echo -e -n "\n\n\n\t[e]xit = "
      read prog_end
      case "$prog_end" in
            e|exit) clear;;
            *) cryptoticker;;
      esac
   }
   cryptoticker



# END
#
#


