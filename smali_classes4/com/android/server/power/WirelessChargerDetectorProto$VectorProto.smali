.class public final Lcom/android/server/power/WirelessChargerDetectorProto$VectorProto;
.super Ljava/lang/Object;
.source "WirelessChargerDetectorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetectorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VectorProto"
.end annotation


# static fields
.field public static final blacklist X:J = 0x10200000001L

.field public static final blacklist Y:J = 0x10200000002L

.field public static final blacklist Z:J = 0x10200000003L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/power/WirelessChargerDetectorProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/WirelessChargerDetectorProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/WirelessChargerDetectorProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetectorProto$VectorProto;->this$0:Lcom/android/server/power/WirelessChargerDetectorProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
