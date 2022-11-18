.class public final synthetic Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/displayhash/DisplayHashingService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-static {p1, p2}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->lambda$getDisplayHashAlgorithms$1(Ljava/lang/Object;Landroid/os/RemoteCallback;)V

    return-void
.end method
