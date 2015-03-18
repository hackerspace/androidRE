.class public Lcz/base48/myapplication/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "cz.base48.myapplication.MESSAGE"


# direct methods
.method public constructor <init>()V
    .registers 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    const v3, 0x7f030018

    invoke-virtual {v2, v3}, Lcz/base48/myapplication/MainActivity;->setContentView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcz/base48/myapplication/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0c0001

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    move v2, v3

    move v3, v2

    const v4, 0x7f080040

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    move v0, v3

    :goto_10
    return v0

    :cond_11
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_10
.end method

.method public send_message(Landroid/view/View;)V
    .registers 12

    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-class v8, Lcz/base48/myapplication/DisplayMessageActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v5

    move-object v5, v0

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Lcz/base48/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v2

    const-string v6, "cz.base48.myapplication.MESSAGE"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcz/base48/myapplication/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
