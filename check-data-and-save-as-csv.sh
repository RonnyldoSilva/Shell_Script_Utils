#!/bin/bash
ROOT_DIR=$1

echo DATA USINA TRAIN_FIELD TRAIN_WEATHER TEST_FIELD TEST_WEATHER NDVI CLIMATOLOGIA

if [ -d $ROOT_DIR ]
then
	
	cd $ROOT_DIR
	for data in `ls`
	do
		
		if [ -d $data ]
		then

			cd $data
			for usina in `ls`
			do
				LINHA=($data $usina 0 0 0 0 0 0)
			       	cd $usina
				for tipo in `ls`
				do
					
					case $tipo in
					ndvi) LINHA[6]=`head -2 'ndvi/ndvi_data.csv' | wc -l | cut -d ' ' -f1` ;;
					luts) LINHA[7]=`head -2 'luts/climatologia.csv' | wc -l | cut -d ' ' -f1` ;;
					test) if [ -f 'test/test_field_data.csv' ]
					      then
						      LINHA[4]=`head -2 'test/test_field_data.csv' | wc -l | cut -d ' ' -f1`
					      fi
					      if [ -f 'test/test_weather_data.csv' ]
					      then
						      LINHA[5]=`head -2 'test/test_weather_data.csv' | wc -l | cut -d ' ' -f1`
					      fi ;;
					training) if [ -f 'training/training_field_data.csv' ]
						  then
							  LINHA[2]=`head -2 'training/training_field_data.csv' | wc -l | cut -d ' ' -f1`
						  fi
						  if [ -f 'training/training_weather_data.csv' ]
						  then
							  LINHA[3]=`head -2 'training/training_weather_data.csv' | wc -l | cut -d ' ' -f1`
					          fi ;;
					esac

				done
				cd ..
				echo ${LINHA[@]}

			done
			cd ..

		fi

	done

else
	echo $ROOT_DIR "is not a dir"
fi
