.class public final synthetic Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/displayhash/DisplayHashingService;

    check-cast p2, [B

    check-cast p3, Landroid/view/displayhash/DisplayHash;

    check-cast p4, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3, p4}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->lambda$verifyDisplayHash$0(Ljava/lang/Object;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    return-void
.end method
