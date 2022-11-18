.class public final synthetic Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->$r8$lambda$rS7LgMn0Lln0LD7SkXkB2FaVZZI(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;I)V

    return-void
.end method
