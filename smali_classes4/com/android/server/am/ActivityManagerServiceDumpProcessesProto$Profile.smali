.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Profile;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Profile"
.end annotation


# static fields
.field public static final blacklist APP_NAME:J = 0x10900000001L

.field public static final blacklist INFO:J = 0x10b00000003L

.field public static final blacklist PROC:J = 0x10b00000002L

.field public static final blacklist TYPE:J = 0x10500000004L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    .line 197
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$Profile;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
