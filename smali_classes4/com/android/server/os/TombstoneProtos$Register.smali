.class public final Lcom/android/server/os/TombstoneProtos$Register;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Register"
.end annotation


# static fields
.field public static final blacklist NAME:J = 0x10900000001L

.field public static final blacklist U64:J = 0x10400000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 178
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Register;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
