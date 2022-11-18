.class public final Lcom/android/server/job/DataSetProto$PackageEntryProto$State;
.super Ljava/lang/Object;
.source "DataSetProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/DataSetProto$PackageEntryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000002L

.field public static final blacklist DURATION_MS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/job/DataSetProto$PackageEntryProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/DataSetProto$PackageEntryProto;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/DataSetProto$PackageEntryProto;

    .line 14
    iput-object p1, p0, Lcom/android/server/job/DataSetProto$PackageEntryProto$State;->this$1:Lcom/android/server/job/DataSetProto$PackageEntryProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
