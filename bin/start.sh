workdir=/server/predict_Lottery_ticket

cd $workdir
python /server/predict_Lottery_ticket/get_train_data.py &
python /server/predict_Lottery_ticket/train_model.py &
nohup python /server/predict_Lottery_ticket/run_api.py $@ > /dev/null 2>&1 &
echo "Server started."

