.class Landroid/media/AudioManager$CallIRedirectionClientInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallIRedirectionClientInfo"
.end annotation


# instance fields
.field public blacklist redirectMode:I

.field final synthetic blacklist this$0:Landroid/media/AudioManager;

.field public blacklist trackOrRecord:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 8500
    iput-object p1, p0, Landroid/media/AudioManager$CallIRedirectionClientInfo;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
