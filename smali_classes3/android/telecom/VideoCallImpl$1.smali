.class Landroid/telecom/VideoCallImpl$1;
.super Ljava/lang/Object;
.source "VideoCallImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;

    .line 55
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$1;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$1;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmVideoProvider(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    return-void
.end method
