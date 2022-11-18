.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/InsetsController;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Landroid/view/InsetsController;->lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;

    move-result-object p1

    return-object p1
.end method
