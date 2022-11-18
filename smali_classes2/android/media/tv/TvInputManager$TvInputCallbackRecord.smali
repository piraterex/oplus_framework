.class final Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputCallbackRecord"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 1052
    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 1053
    return-void
.end method


# virtual methods
.method public greylist-max-o getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;
    .locals 1

    .line 1056
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    return-object v0
.end method

.method public blacklist postCurrentTunedInfosUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;)V"
        }
    .end annotation

    .line 1105
    .local p1, "currentTunedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$6;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1111
    return-void
.end method

.method public greylist-max-o postInputAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1066
    return-void
.end method

.method public greylist-max-o postInputRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1075
    return-void
.end method

.method public greylist-max-o postInputStateChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1087
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1093
    return-void
.end method

.method public greylist-max-o postInputUpdated(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1084
    return-void
.end method

.method public greylist-max-o postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 2
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1096
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Landroid/media/tv/TvInputInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method
