.class public final Landroid/os/SystemProto$PhoneSignalStrength;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PhoneSignalStrength"
.end annotation


# static fields
.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o TOTAL:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemProto;

    .line 264
    iput-object p1, p0, Landroid/os/SystemProto$PhoneSignalStrength;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
