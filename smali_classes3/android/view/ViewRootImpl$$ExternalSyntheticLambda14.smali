.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/CompatOnBackInvokedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final whitelist onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda14;->f$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->lambda$registerCompatOnBackInvokedCallback$11$android-view-ViewRootImpl()V

    return-void
.end method
