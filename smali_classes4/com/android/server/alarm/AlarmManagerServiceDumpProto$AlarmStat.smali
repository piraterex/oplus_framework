.class public final Lcom/android/server/alarm/AlarmManagerServiceDumpProto$AlarmStat;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AlarmStat"
.end annotation


# static fields
.field public static final blacklist BROADCAST:J = 0x10b00000001L

.field public static final blacklist FILTERS:J = 0x20b00000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/alarm/AlarmManagerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    .line 39
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerServiceDumpProto$AlarmStat;->this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
