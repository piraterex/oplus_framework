.class public final Lcom/android/server/alarm/AlarmManagerServiceDumpProto$TopAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopAlarm"
.end annotation


# static fields
.field public static final blacklist FILTER:J = 0x10b00000003L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/alarm/AlarmManagerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    .line 25
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerServiceDumpProto$TopAlarm;->this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
