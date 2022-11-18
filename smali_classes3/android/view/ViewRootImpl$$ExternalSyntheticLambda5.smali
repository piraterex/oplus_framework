.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/IScrollCaptureResponseListener;

.field public final synthetic blacklist f$2:Landroid/view/ScrollCaptureSearchResults;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iput-object p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$2:Landroid/view/ScrollCaptureSearchResults;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iget-object v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$2:Landroid/view/ScrollCaptureSearchResults;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->lambda$handleScrollCaptureRequest$9$android-view-ViewRootImpl(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method
