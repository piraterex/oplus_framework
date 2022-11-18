.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    .line 1288
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1304
    const-string v0, "RemoteViewsAdapter"

    const-string v1, "Error inflating first RemoteViews"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    return-void
.end method

.method public blacklist onViewApplied(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1292
    nop

    .line 1293
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1294
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1292
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1295
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->this$0:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;->onError(Ljava/lang/Exception;)V

    .line 1299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
