.class public final Landroid/os/SystemProto$WifiMulticastWakelockTotal;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiMulticastWakelockTotal"
.end annotation


# static fields
.field public static final greylist-max-o COUNT:J = 0x10500000002L

.field public static final greylist-max-o DURATION_MS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemProto;

    .line 374
    iput-object p1, p0, Landroid/os/SystemProto$WifiMulticastWakelockTotal;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
