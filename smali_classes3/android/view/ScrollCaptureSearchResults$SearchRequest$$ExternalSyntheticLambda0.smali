.class public final synthetic Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureSearchResults$SearchRequest;

.field public final synthetic blacklist f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureSearchResults$SearchRequest;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    iput-object p2, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults$SearchRequest;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureSearchResults$SearchRequest;->lambda$accept$0$android-view-ScrollCaptureSearchResults$SearchRequest(Landroid/graphics/Rect;)V

    return-void
.end method
