.class public final Lcom/android/server/am/UidRecordProto$ProcStateSequence;
.super Ljava/lang/Object;
.source "UidRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcStateSequence"
.end annotation


# static fields
.field public static final blacklist CURURENT:J = 0x10300000001L

.field public static final blacklist LAST_DISPATCHED:J = 0x10300000003L

.field public static final blacklist LAST_NETWORK_UPDATED:J = 0x10300000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/UidRecordProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/UidRecordProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UidRecordProto;

    .line 21
    iput-object p1, p0, Lcom/android/server/am/UidRecordProto$ProcStateSequence;->this$0:Lcom/android/server/am/UidRecordProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
