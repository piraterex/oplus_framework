.class Landroid/media/tv/TvInputManager$3;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;

    .line 2087
    iput-object p1, p0, Landroid/media/tv/TvInputManager$3;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2089
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2090
    return-void
.end method
