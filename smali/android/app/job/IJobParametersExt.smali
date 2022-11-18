.class public interface abstract Landroid/app/job/IJobParametersExt;
.super Ljava/lang/Object;
.source "IJobParametersExt.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "JobParametersExt"


# virtual methods
.method public blacklist getIntValue(Ljava/lang/String;I)I
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 33
    return p2
.end method

.method public blacklist getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 37
    return-object p2
.end method

.method public blacklist initJobParameters(Ljava/lang/Object;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public blacklist setIntValue(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 26
    return-void
.end method

.method public blacklist setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public blacklist writeToParcelJobParameters(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dest"    # Ljava/lang/Object;

    .line 42
    return-void
.end method
