.class public final synthetic Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureSearchResults;

.field public final synthetic blacklist f$1:Landroid/view/ScrollCaptureCallback;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iput-object p2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$1:Landroid/view/ScrollCaptureCallback;

    iput-object p3, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$1:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Landroid/view/ScrollCaptureSearchResults;->lambda$addTarget$0$android-view-ScrollCaptureSearchResults(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    return-void
.end method
