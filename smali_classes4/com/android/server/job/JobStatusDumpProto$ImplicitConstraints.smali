.class public final Lcom/android/server/job/JobStatusDumpProto$ImplicitConstraints;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImplicitConstraints"
.end annotation


# static fields
.field public static final blacklist IS_DYNAMIC_SATISFIED:J = 0x10800000003L

.field public static final blacklist IS_NOT_DOZING:J = 0x10800000001L

.field public static final blacklist IS_NOT_RESTRICTED_IN_BG:J = 0x10800000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/job/JobStatusDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/JobStatusDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStatusDumpProto;

    .line 135
    iput-object p1, p0, Lcom/android/server/job/JobStatusDumpProto$ImplicitConstraints;->this$0:Lcom/android/server/job/JobStatusDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
