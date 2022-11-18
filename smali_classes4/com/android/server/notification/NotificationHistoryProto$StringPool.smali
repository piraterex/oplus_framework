.class public final Lcom/android/server/notification/NotificationHistoryProto$StringPool;
.super Ljava/lang/Object;
.source "NotificationHistoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StringPool"
.end annotation


# static fields
.field public static final blacklist SIZE:J = 0x10500000001L

.field public static final blacklist STRINGS:J = 0x20900000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/notification/NotificationHistoryProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/notification/NotificationHistoryProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationHistoryProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryProto$StringPool;->this$0:Lcom/android/server/notification/NotificationHistoryProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
