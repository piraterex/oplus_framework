.class public final synthetic Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/EnterTransitionCoordinator;

.field public final synthetic blacklist f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/EnterTransitionCoordinator;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->lambda$triggerViewsReady$0$android-app-EnterTransitionCoordinator(Landroid/util/ArrayMap;)V

    return-void
.end method
