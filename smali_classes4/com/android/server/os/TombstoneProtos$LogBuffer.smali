.class public final Lcom/android/server/os/TombstoneProtos$LogBuffer;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogBuffer"
.end annotation


# static fields
.field public static final blacklist LOGS:J = 0x20b00000002L

.field public static final blacklist NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 327
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$LogBuffer;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
