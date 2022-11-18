.class Landroid/app/SystemServiceRegistry$97;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/view/contentcapture/ContentCaptureManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1176
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    .line 1182
    .local v0, "outerContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v1

    .line 1184
    .local v1, "options":Landroid/content/ContentCaptureOptions;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/ContentCaptureOptions;->isWhitelisted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1185
    :cond_0
    nop

    .line 1186
    const-string v2, "content_capture"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1187
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v3

    .line 1189
    .local v3, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-eqz v3, :cond_1

    .line 1190
    new-instance v4, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {v4, v0, v3, v1}, Landroid/view/contentcapture/ContentCaptureManager;-><init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    return-object v4

    .line 1195
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$97;->createService(Landroid/app/ContextImpl;)Landroid/view/contentcapture/ContentCaptureManager;

    move-result-object p1

    return-object p1
.end method
