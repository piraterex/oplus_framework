.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$ConstantsProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConstantsProto"
.end annotation


# static fields
.field public static final blacklist IS_NO_CACHED_WAKE_LOCKS:J = 0x10800000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerServiceDumpProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceDumpProto$ConstantsProto;->this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
