.class public final Landroid/service/notification/RankingHelperProto$RecordProto;
.super Ljava/lang/Object;
.source "RankingHelperProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/RankingHelperProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecordProto"
.end annotation


# static fields
.field public static final greylist-max-o CHANNELS:J = 0x20b00000007L

.field public static final greylist-max-o CHANNEL_GROUPS:J = 0x20b00000008L

.field public static final greylist-max-o IMPORTANCE:J = 0x11100000003L

.field public static final greylist-max-o PACKAGE:J = 0x10900000001L

.field public static final greylist-max-o PRIORITY:J = 0x10500000004L

.field public static final greylist-max-o SHOW_BADGE:J = 0x10800000006L

.field public static final greylist-max-o UID:J = 0x10500000002L

.field public static final greylist-max-o VISIBILITY:J = 0x11100000005L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/RankingHelperProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/RankingHelperProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/RankingHelperProto;

    .line 11
    iput-object p1, p0, Landroid/service/notification/RankingHelperProto$RecordProto;->this$0:Landroid/service/notification/RankingHelperProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
