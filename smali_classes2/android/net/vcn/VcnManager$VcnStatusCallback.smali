.class public abstract Landroid/net/vcn/VcnManager$VcnStatusCallback;
.super Ljava/lang/Object;
.source "VcnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VcnStatusCallback"
.end annotation


# instance fields
.field private blacklist mCbBinder:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;
    .locals 0

    iget-object p0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallback;->mCbBinder:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallback;->mCbBinder:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onGatewayConnectionError(Ljava/lang/String;ILjava/lang/Throwable;)V
.end method

.method public abstract whitelist onStatusChanged(I)V
.end method
