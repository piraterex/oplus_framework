.class public final Lcom/android/server/blob/BlobStatsEventProto$BlobLeaseeListProto;
.super Ljava/lang/Object;
.source "BlobStatsEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStatsEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlobLeaseeListProto"
.end annotation


# static fields
.field public static final blacklist LEASEE:J = 0x20b00000001L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/blob/BlobStatsEventProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/blob/BlobStatsEventProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/blob/BlobStatsEventProto;

    .line 47
    iput-object p1, p0, Lcom/android/server/blob/BlobStatsEventProto$BlobLeaseeListProto;->this$0:Lcom/android/server/blob/BlobStatsEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
