.class public final synthetic Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->lambda$getRoutesWithIds$1(Ljava/util/List;Landroid/media/MediaRoute2Info;)Z

    move-result p1

    return p1
.end method
