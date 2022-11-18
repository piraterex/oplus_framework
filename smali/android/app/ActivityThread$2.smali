.class Landroid/app/ActivityThread$2;
.super Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 7265
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7269
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 7270
    iget-object v0, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 7272
    :cond_0
    return-void
.end method
