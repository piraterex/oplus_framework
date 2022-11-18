.class public Landroid/telecom/Logging/EventManager$EventRecord;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;,
        Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;
    }
.end annotation


# instance fields
.field private final blacklist mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

.field final synthetic blacklist this$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V
    .locals 1
    .param p1, "this$0"    # Landroid/telecom/Logging/EventManager;
    .param p2, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;

    .line 186
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 187
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 188
    return-void
.end method


# virtual methods
.method public blacklist addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    new-instance v7, Landroid/telecom/Logging/EventManager$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telecom/Logging/EventManager$Event;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v1}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "Event"

    const-string v2, "RecordEntry %s: %s, %s"

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 236
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v0}, Landroid/telecom/Logging/EventManager$Loggable;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 240
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$Event;

    .line 241
    .local v1, "event":Landroid/telecom/Logging/EventManager$Event;
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 245
    const-string v2, " ("

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 248
    .local v2, "data":Ljava/lang/Object;
    instance-of v3, v2, Landroid/telecom/Logging/EventManager$Loggable;

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v3}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetmCallEventRecordMap(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 252
    .local v3, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v3, :cond_0

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordEntry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v5}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .end local v3    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 258
    const-string v3, ")"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .end local v2    # "data":Ljava/lang/Object;
    :cond_1
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    const-string v2, ":"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 264
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 265
    .end local v1    # "event":Landroid/telecom/Logging/EventManager$Event;
    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "Timings (average for this call, milliseconds):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 269
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->extractEventTimings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->averageTimings(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 270
    .local v0, "avgEventTimings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v1, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 272
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "eventName":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%s: %.2f\n"

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    .end local v3    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 277
    return-void
.end method

.method public blacklist extractEventTimings()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;",
            ">;"
        }
    .end annotation

    .line 204
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v10, v0

    .line 209
    .local v10, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 210
    .local v11, "pendingResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;>;"
    iget-object v12, v9, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    monitor-enter v12

    .line 211
    :try_start_0
    iget-object v0, v9, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$Event;

    move-object v13, v1

    .line 212
    .local v13, "event":Landroid/telecom/Logging/EventManager$Event;
    iget-object v1, v9, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v1}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v13, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v9, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v1}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v13, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$TimedEventPair;

    move-object v15, v1

    .line 217
    .local v15, "p":Landroid/telecom/Logging/EventManager$TimedEventPair;
    iget-object v8, v15, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    new-instance v6, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    iget-object v3, v13, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    iget-wide v4, v13, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-wide v1, v15, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    iget-object v7, v15, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    move-wide/from16 v16, v1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v18, v0

    move-object v0, v6

    move-object/from16 v19, v7

    move-wide/from16 v6, v16

    move-object/from16 v16, v14

    move-object v14, v8

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v11, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    move-object/from16 v14, v16

    move-object/from16 v0, v18

    .end local v15    # "p":Landroid/telecom/Logging/EventManager$TimedEventPair;
    goto :goto_1

    .line 215
    :cond_1
    move-object/from16 v18, v0

    goto :goto_2

    .line 212
    :cond_2
    move-object/from16 v18, v0

    .line 222
    :goto_2
    iget-object v0, v13, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    .line 223
    .local v0, "pendingResponse":Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
    if-eqz v0, :cond_3

    .line 224
    iget-wide v1, v13, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-wide v3, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    sub-long/2addr v1, v3

    .line 225
    .local v1, "elapsedTime":J
    iget-wide v3, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 226
    new-instance v3, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;

    iget-object v4, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    invoke-direct {v3, v9, v4, v1, v2}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V

    invoke-virtual {v10, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0    # "pendingResponse":Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
    .end local v1    # "elapsedTime":J
    .end local v13    # "event":Landroid/telecom/Logging/EventManager$Event;
    :cond_3
    move-object/from16 v0, v18

    goto/16 :goto_0

    .line 230
    :cond_4
    monitor-exit v12

    .line 232
    return-object v10

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    return-object v0
.end method
