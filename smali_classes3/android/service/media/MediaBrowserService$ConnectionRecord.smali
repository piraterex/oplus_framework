.class Landroid/service/media/MediaBrowserService$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionRecord"
.end annotation


# instance fields
.field public final greylist-max-o callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field public final greylist-max-o pid:I

.field public final greylist-max-o pkg:Ljava/lang/String;

.field public final greylist-max-o root:Landroid/service/media/MediaBrowserService$BrowserRoot;

.field public final greylist-max-o rootHints:Landroid/os/Bundle;

.field public final blacklist service:Landroid/service/media/MediaBrowserService;

.field public final greylist-max-o subscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final greylist-max-o uid:I


# direct methods
.method constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V
    .locals 1
    .param p1, "service"    # Landroid/service/media/MediaBrowserService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "rootHints"    # Landroid/os/Bundle;
    .param p6, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p7, "root"    # Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    .line 129
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->service:Landroid/service/media/MediaBrowserService;

    .line 130
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    .line 131
    iput p3, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    .line 132
    iput p4, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    .line 133
    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    .line 134
    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 135
    iput-object p7, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->service:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;-><init>(Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method
