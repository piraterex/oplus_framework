.class final Landroid/media/tv/TvInputManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final greylist-max-o MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final greylist-max-o MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$Session;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3213
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    .line 3214
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3215
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3219
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3233
    return-void

    .line 3229
    :pswitch_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    .line 3230
    return-void

    .line 3225
    :pswitch_1
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    .line 3226
    return-void

    .line 3221
    :pswitch_2
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$InputEventHandler;->this$0:Landroid/media/tv/TvInputManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/TvInputManager$Session$PendingEvent;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvInputManager$Session$PendingEvent;)V

    .line 3222
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
