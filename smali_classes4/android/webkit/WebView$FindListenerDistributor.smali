.class Landroid/webkit/WebView$FindListenerDistributor;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindListenerDistributor"
.end annotation


# instance fields
.field private greylist-max-o mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

.field private greylist-max-o mUserFindListener:Landroid/webkit/WebView$FindListener;

.field final synthetic blacklist this$0:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmFindDialogFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 2561
    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$FindListenerDistributor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public whitelist onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .line 2568
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    if-eqz v0, :cond_0

    .line 2569
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2573
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    if-eqz v0, :cond_1

    .line 2574
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2577
    :cond_1
    return-void
.end method
