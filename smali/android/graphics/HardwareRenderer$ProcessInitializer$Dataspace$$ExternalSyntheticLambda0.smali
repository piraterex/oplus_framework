.class public final synthetic Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/ColorSpace;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace;

    check-cast p1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-static {v0, p1}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->lambda$find$0(Landroid/graphics/ColorSpace;Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)Z

    move-result p1

    return p1
.end method
