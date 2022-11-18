.class public final Lcom/android/server/alarm/AlarmManagerServiceDumpProto$LastAllowWhileIdleDispatch;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LastAllowWhileIdleDispatch"
.end annotation


# static fields
.field public static final blacklist NEXT_ALLOWED_MS:J = 0x10300000003L

.field public static final blacklist TIME_MS:J = 0x10300000002L

.field public static final blacklist UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/alarm/AlarmManagerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerServiceDumpProto$LastAllowWhileIdleDispatch;->this$0:Lcom/android/server/alarm/AlarmManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
