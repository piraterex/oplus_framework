.class public final Lcom/android/server/usage/IntervalStatsProto$CountAndTime;
.super Ljava/lang/Object;
.source "IntervalStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountAndTime"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000001L

.field public static final blacklist TIME_MS:J = 0x10300000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/usage/IntervalStatsProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsProto;

    .line 22
    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsProto$CountAndTime;->this$0:Lcom/android/server/usage/IntervalStatsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
