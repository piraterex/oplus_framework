.class public final synthetic Landroid/graphics/HardwareRenderer$ProcessInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/ColorSpace;

    invoke-static {p1}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->find(Landroid/graphics/ColorSpace;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
