json.poll do
    json.id @poll.id
    json.subject @poll.subject
    json.options @poll.poll_options.map {
        |o| o.slice(:id, :title)
    }
end