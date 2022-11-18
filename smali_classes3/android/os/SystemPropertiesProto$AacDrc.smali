.class public final Landroid/os/SystemPropertiesProto$AacDrc;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AacDrc"
.end annotation


# static fields
.field public static final greylist-max-o BOOST:J = 0x10500000001L

.field public static final greylist-max-o CUT:J = 0x10500000002L

.field public static final greylist-max-o ENC_TARGET_LEVEL:J = 0x10500000003L

.field public static final greylist-max-o HEAVY:J = 0x10500000004L

.field public static final greylist-max-o REFERENCE_LEVEL:J = 0x10500000005L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;

    .line 22
    iput-object p1, p0, Landroid/os/SystemPropertiesProto$AacDrc;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
