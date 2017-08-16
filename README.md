## Dead Man's Snitch isn't the best

This app seeks to be a no-name version of DMS, in that it does the following:
1. Records things that happen by a post action
2. Displays those things

### Still in the pipe
3. Warns each hour when something doesn't fire.

### Test this app
currently, the record is at http://careerjsm-cheap-mans-snitch.herokuapp.com
- User: brian@careerjsm.com
- Pass: 1Berekley

To fire something at it, try this command in your terminal:
```shell
curl -H "Content-Type: application/json" -X POST -d '{"task":"random test by YOUR NAME","interval":"manual", "environment":"testing"}' http://careerjsm-cheap-mans-snitch.herokuapp.com/new-hit
```

## TODOs
- [ ] Fix Bootstrap in the asset pipeline
- [ ] Send webhook to #random in the event of a failure
- [ ] Enforce interval string values through rspec
- [ ] Enforce interval string values using the model before_create method

You should receive a null value returned, and the log should get larger with your thing.
