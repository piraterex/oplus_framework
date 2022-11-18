.class public abstract Landroid/content/res/OplusBaseConfiguration;
.super Ljava/lang/Object;
.source "OplusBaseConfiguration.java"


# instance fields
.field public whitelist mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-void
.end method


# virtual methods
.method public whitelist getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-object v0
.end method
