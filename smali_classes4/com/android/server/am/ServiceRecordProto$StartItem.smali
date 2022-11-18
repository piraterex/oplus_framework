.class public final Lcom/android/server/am/ServiceRecordProto$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartItem"
.end annotation


# static fields
.field public static final blacklist DELIVERY_COUNT:J = 0x10500000003L

.field public static final blacklist DONE_EXECUTING_COUNT:J = 0x10500000004L

.field public static final blacklist DURATION:J = 0x10b00000002L

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist INTENT:J = 0x10b00000005L

.field public static final blacklist NEEDED_GRANTS:J = 0x10b00000006L

.field public static final blacklist URI_PERMISSIONS:J = 0x10b00000007L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/ServiceRecordProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ServiceRecordProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecordProto;

    .line 87
    iput-object p1, p0, Lcom/android/server/am/ServiceRecordProto$StartItem;->this$0:Lcom/android/server/am/ServiceRecordProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
