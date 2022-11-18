.class public final Lcom/android/server/BluetoothManagerServiceDumpProto$ActiveLog;
.super Ljava/lang/Object;
.source "BluetoothManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActiveLog"
.end annotation


# static fields
.field public static final blacklist ENABLE:J = 0x10800000002L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000003L

.field public static final blacklist REASON:J = 0x10e00000004L

.field public static final blacklist TIMESTAMP_MS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/BluetoothManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/BluetoothManagerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerServiceDumpProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/BluetoothManagerServiceDumpProto$ActiveLog;->this$0:Lcom/android/server/BluetoothManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
