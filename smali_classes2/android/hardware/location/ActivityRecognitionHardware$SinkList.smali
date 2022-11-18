.class Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
.super Landroid/os/RemoteCallbackList;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/ActivityRecognitionHardware;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0

    .line 231
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;)V

    return-void
.end method

.method private greylist-max-o disableActivityEventIfEnabled(II)V
    .locals 5
    .param p1, "activityType"    # I
    .param p2, "eventType"    # I

    .line 249
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$mnativeDisableActivityEvent(Landroid/hardware/location/ActivityRecognitionHardware;II)I

    move-result v0

    .line 254
    .local v0, "result":I
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aput v3, v2, p2

    .line 255
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 255
    const-string v1, "DisableActivityEvent: activityType=%d, eventType=%d, result=%d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ActivityRecognitionHW"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method


# virtual methods
.method public greylist-max-o onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 234
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSinks(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getRegisteredCallbackCount()I

    move-result v0

    .line 235
    .local v0, "callbackCount":I
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisteredCallbackCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityRecognitionHW"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    .line 237
    return-void

    .line 241
    :cond_1
    const/4 v1, 0x0

    .local v1, "activity":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesCount(Landroid/hardware/location/ActivityRecognitionHardware;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 242
    const/4 v2, 0x0

    .local v2, "event":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 243
    invoke-direct {p0, v1, v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->disableActivityEventIfEnabled(II)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "event":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "activity":I
    :cond_3
    return-void
.end method

.method public bridge synthetic whitelist onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 231
    check-cast p1, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V

    return-void
.end method
