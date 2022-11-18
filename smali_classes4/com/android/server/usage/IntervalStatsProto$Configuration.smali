.class public final Lcom/android/server/usage/IntervalStatsProto$Configuration;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Configuration"
.end annotation


# static fields
.field public static final blacklist ACTIVE:J = 0x10800000005L

.field public static final blacklist CONFIG:J = 0x10b00000001L

.field public static final blacklist COUNT:J = 0x10500000004L

.field public static final blacklist LAST_TIME_ACTIVE_MS:J = 0x10300000002L

.field public static final blacklist TOTAL_TIME_ACTIVE_MS:J = 0x10300000003L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/usage/IntervalStatsProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsProto;

    .line 96
    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsProto$Configuration;->this$0:Lcom/android/server/usage/IntervalStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
