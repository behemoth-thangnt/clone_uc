namespace :demo do
  desc "Demo task"
  task rake: :environment do
    Guide.create(
      title: "Demo task",
      content: "this is demo task to test rake woking"
    )
    puts "done"
  end

end
