.class public final Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction$CategoryCount;
.super Ljava/lang/Object;
.source "UsageStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryCount"
.end annotation


# static fields
.field public static final blacklist CATEGORY_TOKEN:J = 0x10500000001L

.field public static final blacklist COUNT:J = 0x10500000002L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;

    .line 14
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction$CategoryCount;->this$1:Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
