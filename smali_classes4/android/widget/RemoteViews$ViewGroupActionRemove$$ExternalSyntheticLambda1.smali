.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->lambda$initActionAsync$1$android-widget-RemoteViews$ViewGroupActionRemove(Landroid/widget/RemoteViews$ViewTree;)Z

    move-result p1

    return p1
.end method
