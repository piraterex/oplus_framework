.class public final Lcom/android/internal/os/BinderLatencyProto$RepeatedApiStats;
.super Ljava/lang/Object;
.source "BinderLatencyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RepeatedApiStats"
.end annotation


# static fields
.field public static final blacklist API_STATS:J = 0x20b00000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderLatencyProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BinderLatencyProto;

    .line 10
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyProto$RepeatedApiStats;->this$0:Lcom/android/internal/os/BinderLatencyProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
